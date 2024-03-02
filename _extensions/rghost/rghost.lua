return {
  ['rghost'] = function(args, kwargs, meta)
    return pandoc.Str("Hello from Rghost!")
  end,

['button'] = function(content)
    return pandoc.RawInline('html', "<!--kg-card-begin: html--><div class='kg-card kg-button-card kg-align-center'><p> <a class='kg-btn kg-btn-accent' href="..content[1]..">"..content[2].."</a></p></div><!--kg-card-end: html-->")
end



}


