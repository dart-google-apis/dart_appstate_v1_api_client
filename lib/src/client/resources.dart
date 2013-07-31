part of appstate_v1_api;

class StatesResource_ {

  final Client _client;

  StatesResource_(Client client) :
      _client = client;

  /**
   * Clears (sets to empty) the data for the passed key if and only if the passed version matches the currently stored version. This method results in a conflict error on version mismatch.
   *
   * [stateKey] - The key for the data to be retrieved.
   *   Minimum: 0
   *   Maximum: 3
   *
   * [currentDataVersion] - The version of the data to be cleared. Version strings are returned by the server.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<WriteResult> clear(core.int stateKey, {core.String currentDataVersion, core.Map optParams}) {
    var url = "states/{stateKey}/clear";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (currentDataVersion != null) queryParams["currentDataVersion"] = currentDataVersion;
    if (stateKey == null) paramErrors.add("stateKey is required");
    if (stateKey != null) urlParams["stateKey"] = stateKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new WriteResult.fromJson(data));
  }

  /**
   * Deletes a key and the data associated with it. The key is removed and no longer counts against the key quota. Note that since this method is not safe in the face of concurrent modifications, it should only be used for development and testing purposes. Invoking this method in shipping code can result in data loss and data corruption.
   *
   * [stateKey] - The key for the data to be retrieved.
   *   Minimum: 0
   *   Maximum: 3
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.int stateKey, {core.Map optParams}) {
    var url = "states/{stateKey}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (stateKey == null) paramErrors.add("stateKey is required");
    if (stateKey != null) urlParams["stateKey"] = stateKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Retrieves the data corresponding to the passed key.
   *
   * [stateKey] - The key for the data to be retrieved.
   *   Minimum: 0
   *   Maximum: 3
   *
   * [optParams] - Additional query parameters
   */
  async.Future<GetResponse> get(core.int stateKey, {core.Map optParams}) {
    var url = "states/{stateKey}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (stateKey == null) paramErrors.add("stateKey is required");
    if (stateKey != null) urlParams["stateKey"] = stateKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new GetResponse.fromJson(data));
  }

  /**
   * Lists all the states keys, and optionally the state data.
   *
   * [includeData] - Whether to include the full data in addition to the version number
   *   Default: false
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ListResponse> list({core.bool includeData, core.Map optParams}) {
    var url = "states";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (includeData != null) queryParams["includeData"] = includeData;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ListResponse.fromJson(data));
  }

  /**
   * Update the data associated with the input key if and only if the passed version matches the currently stored version. This method is safe in the face of concurrent writes. Maximum per-key size is 128KB.
   *
   * [request] - UpdateRequest to send in this request
   *
   * [stateKey] - The key for the data to be retrieved.
   *   Minimum: 0
   *   Maximum: 3
   *
   * [currentStateVersion] - The version of the app state your application is attempting to update. If this does not match the current version, this method will return a conflict error. If there is no data stored on the server for this key, the update will succeed irrespective of the value of this parameter.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<WriteResult> update(UpdateRequest request, core.int stateKey, {core.String currentStateVersion, core.Map optParams}) {
    var url = "states/{stateKey}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (currentStateVersion != null) queryParams["currentStateVersion"] = currentStateVersion;
    if (stateKey == null) paramErrors.add("stateKey is required");
    if (stateKey != null) urlParams["stateKey"] = stateKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new WriteResult.fromJson(data));
  }
}

