part of appstate_v1_api;

/** This is a JSON template for an app state resource. */
class GetResponse {

  /** The current app state version. */
  core.String currentStateVersion;

  /** The requested data. */
  core.String data;

  /** Uniquely identifies the type of this resource. Value is always the fixed string appstate#getResponse. */
  core.String kind;

  /** The key for the data. */
  core.int stateKey;

  /** Create new GetResponse from JSON data */
  GetResponse.fromJson(core.Map json) {
    if (json.containsKey("currentStateVersion")) {
      currentStateVersion = json["currentStateVersion"];
    }
    if (json.containsKey("data")) {
      data = json["data"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("stateKey")) {
      stateKey = json["stateKey"];
    }
  }

  /** Create JSON Object for GetResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (currentStateVersion != null) {
      output["currentStateVersion"] = currentStateVersion;
    }
    if (data != null) {
      output["data"] = data;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (stateKey != null) {
      output["stateKey"] = stateKey;
    }

    return output;
  }

  /** Return String representation of GetResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template to convert a list-response for app state. */
class ListResponse {

  /** The app state data. */
  core.List<GetResponse> items;

  /** Uniquely identifies the type of this resource. Value is always the fixed string appstate#listResponse. */
  core.String kind;

  /** The maximum number of keys allowed for this user. */
  core.int maximumKeyCount;

  /** Create new ListResponse from JSON data */
  ListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new GetResponse.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("maximumKeyCount")) {
      maximumKeyCount = json["maximumKeyCount"];
    }
  }

  /** Create JSON Object for ListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (maximumKeyCount != null) {
      output["maximumKeyCount"] = maximumKeyCount;
    }

    return output;
  }

  /** Return String representation of ListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a requests which update app state */
class UpdateRequest {

  /** The new app state data that your application is trying to update with. */
  core.String data;

  /** Uniquely identifies the type of this resource. Value is always the fixed string appstate#updateRequest. */
  core.String kind;

  /** Create new UpdateRequest from JSON data */
  UpdateRequest.fromJson(core.Map json) {
    if (json.containsKey("data")) {
      data = json["data"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for UpdateRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (data != null) {
      output["data"] = data;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of UpdateRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for an app state write result. */
class WriteResult {

  /** The version of the data for this key on the server. */
  core.String currentStateVersion;

  /** Uniquely identifies the type of this resource. Value is always the fixed string appstate#writeResult. */
  core.String kind;

  /** The written key. */
  core.int stateKey;

  /** Create new WriteResult from JSON data */
  WriteResult.fromJson(core.Map json) {
    if (json.containsKey("currentStateVersion")) {
      currentStateVersion = json["currentStateVersion"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("stateKey")) {
      stateKey = json["stateKey"];
    }
  }

  /** Create JSON Object for WriteResult */
  core.Map toJson() {
    var output = new core.Map();

    if (currentStateVersion != null) {
      output["currentStateVersion"] = currentStateVersion;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (stateKey != null) {
      output["stateKey"] = stateKey;
    }

    return output;
  }

  /** Return String representation of WriteResult */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
