import axios from "axios";

export function toggleCompletable(completable) {
  return (dispatch) => {
    return axios
      .patch(`/api/completables/complete/${completable.id}.json`, completable)
      .then((res) => res.data)
      .then((data) => dispatch({ type: "TOGGLE_COMPLETABLE", id: data.id }));
  };
}
