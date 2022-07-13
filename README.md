# responsive_animated_portfolio
 Um Web site desenvolvido em Flutter Web com estilo de portfólio.
 <p>
 O site tem duas seções: uma onde são exibidas as informações do proprietário da página e a outra onde são exibidas as partes Banner de apresentação, destaques, meus projetos e recomendações. 
 </p>
 <p>
  As animações das classes AnimatedCircularProgressIndicator, que usa CircularProgressIndicator e AnimatedLinearProgressIndicator, que usa LinearProgressIndicator, foram feitas com TweenAnimationBuilder, com valor de Tween<double>, já que o valor é em porcentagem.<br />
  A animação do texto da seção destaque também utilizei TweenAnimationBuilder, mas usando a função IntTween, pois o valor é inteiro. 
 </p>
<p>
Para ser possível o Scroll horizontal funcionar com o click do mouse, criei a classe MyCustomScrollBehavior que herda MaterialScrollBehavior e inseri a opção de identificar além do touch (PointerDeviceKind.touch), o mouse (PointerDeviceKind.mouse). Depois, na classe Main, adicionei a classe criada na propriedade scrollBehavior em MaterialApp.
</p>
<p>
Para melhor experiência do usuário, troquei o ponteiro do mouse para o modo click quando estivesse na região de um botão, para isso, utilizei MouseRegion com a propriedade cursor: SystemMouseCursors.click. Pude perceber que a partir do momento em que se configura um botão, os outros botões passam a ter o mesmo comportamento. 
</p>
<p>Veja como ficou o projeto <a href="https://rosilenemoufer.github.io/responsive_animated_portfolio/#/">clicando aqui</a></p>
