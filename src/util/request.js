function checkStatus(response) {
  if (response.status >= 200 && response.status < 300) {
    return response
  }

  const error = new Error(response.statusText)
  error.reponse = response
  throw error
}

/**
 * Requests a URL, returning a promise
 * 
 * @param {string} url       The URL we want to request
 * @param {object} [options] The options we want to pass tp 'retch
 * @return {object}          An object containing either "data" or "err"
 */
export default async function requests(url, options) {
  const response = await fetch(url, options)
  checkStatus(response)
  return await response.json()
}