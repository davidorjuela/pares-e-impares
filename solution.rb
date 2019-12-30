require 'sinatra'

num=0


get '/' do
        @num = num
	erb :index
end

post '/sumar' do
        num += 1
	@num = num
        erb :index
end

__END__
@@ index

<!doctype html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <title>Pares e impares</title>
</head>
<body>
  <h1>Mi cuenta es:<%= @num %></h1>
  <form action="/sumar" method="post">
    <button type="submit">Sumar</button>
  </form>
</body>
</html>


