import axios from "axios";

export function fetchPaths() {
  return (dispatch) => {
    dispatch({ type: "START_ADDING_PATHS_REQUEST" });
    return axios
      .get("/api/paths.json")
      .then((response) => response.data)
      .then((paths) => dispatch({ type: "ADD_PATHS", paths }));
  };
}
