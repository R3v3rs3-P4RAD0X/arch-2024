const time = Variable('', {
    poll: [1000, function() {
        return Date().toString()
    }],
})

const bar = (window) =>{
    return Widget.Window({
        name: 'Bar',
        anchor: ['top', 'left', 'right'],
        exclusivity: 'normal',
        layer: 'top',
        margins: [0, 0],
        monitor: window,
        child: Widget.Label("Hello, World!")
  });
}

App.config({
    windows: [bar(1)],
})
