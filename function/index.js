exports.helloWorldtf = (req, res) => {
    let message = req.query.message || req.body.message || 'Hello World! from terraform';
    res.status(200).send(message);
}