#import "Class.typ": *


#show: ieee.with(
  title: [#text(smallcaps("Lab #3: Web Application with Genie"))],
  /*
  abstract: [
    #lorem(10).
  ],
  */
  authors:
  (
    

    
    (
      name: "Mohamed Aziz Hajri",
      department: [Genie electrique],
      organization: [ISET Bizerte --- Tunisia],
      profile: "Mohamedazizhajri",
    ),
    (
      name: "Mahjoub Ben Barka",
      department: [Genie electrique],
      organization: [ISET Bizerte --- Tunisia],
      profile: "Mahjoubbenbarka",
    ),
 
  

  )
  // index-terms: (""),
  // bibliography-file: "Biblio.bib",
)

= Exercice
== But
Creat a web app using julia and html coding as in @fig:repl.

#figure(
	image("Images/REPL.png", width: 100%, fit: "contain"),
	caption: "Julia REPL"
	) <fig:repl>

== Manipulation 
We provide the Julia and HTML codes to build and run a web app that allows us to control the amplitude, the frequency, the offset and the phase of a sine wave. *Plotly* is used to plot the corresponding graph. We also added a slider to change the number of samples used to draw the figure. The latter setting permits to grasp the influence of sampling frequency on the look of our chart.

#let code=read("../Codes/web-app/app.jl")
#raw(code, lang: "julia")


#let code=read("../Codes/web-app/app.jl.html")
#raw(code, lang: "html")

```zsh
julia --project
```

```julia
julia> using GenieFramework
julia> Genie.loadapp() # Load app
julia> up() # Start server
```

We can now open the browser and navigate to the link #highlight[#link("localhost:8000")[localhost:8000]]. We will get the graphical interface as in @fig:genie-webapp.

#figure(
	image("Images/gen.png", width: 100%),
	caption: "Genie -> Sine Wave",
) <fig:genie-webapp>

#test[You are asked to add two extra sliders that modify the behaviour of the sine wave graph:
	+ _Phase_ ranging between $-pi$ and $pi$, changes by a step of $pi/100$
	+ _Offset_ varies from $-0.5$ to $1$, by a step of $0.1$.]

