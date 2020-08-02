#!/usr/bin/python

def wsgi_application(environ, start_response):
	status = '200 OK'
	queryStr = environ['QUERY_STRING']
	body = queryStr.replace('&', '\n').encode('utf-8')
	headers = [
		('Content-type', 'text/plain'),
		('Content-length', str(len(body)))
	]
	start_response(status, headers)
	return [body]
