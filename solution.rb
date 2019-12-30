require 'sinatra'

get '/' do
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
  <% for i in(1..50) %>
	    <% if i % 2 === 0 %>
		<%= "<h1>" + i.to_s + " Soy Par!</h1>" %>
            <% else %>
		<%= "<h1>" + i.to_s + " Soy Impar!</h1>" %>
	    <% end %>
	<% end %>
</body>
</html>


