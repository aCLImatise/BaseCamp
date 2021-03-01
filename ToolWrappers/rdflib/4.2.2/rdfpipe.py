from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Rdfpipe_V0_1_0 = CommandToolBuilder(tool="rdfpipe", base_command=["rdfpipe"], inputs=[ToolInput(tag="in_input_format", input_type=File(optional=True), prefix="--input-format", doc=InputDocumentation(doc="Format of the input document(s). Available input\nformats are: application/rdf+xml, xml, text/n3, n3,\ntext/turtle, turtle, ttl, application/n-triples,\nntriples, nt, nt11, application/n-quads, nquads,\napplication/trix, trix, trig, hturtle, rdfa, mdata,\nmicrodata, rdfa1.0, rdfa1.1, html,\napplication/svg+xml, application/xhtml+xml, text/html.\nIf no format is given, it will be guessed from the\nfile name extension. Keywords to parser can be given\nafter format like: FORMAT:(+)KW1,-KW2,KW3=VALUE.")), ToolInput(tag="in_output_format", input_type=Int(optional=True), prefix="--output-format", doc=InputDocumentation(doc="Format of the graph serialization. Available output\nformats are: application/rdf+xml, xml, text/n3, n3,\ntext/turtle, turtle, ttl, trig, application/n-triples,\nntriples, nt, nt11, pretty-xml, trix,\napplication/trix, application/n-quads, nquads. Default\nformat is: 'n3'. Keywords to serializer can be given\nafter format like: FORMAT:(+)KW1,-KW2,KW3=VALUE.")), ToolInput(tag="in_ns", input_type=String(optional=True), prefix="--ns", doc=InputDocumentation(doc="=NAMESPACE\nRegister a namespace binding (QName prefix to a base\nURI). This can be used more than once.")), ToolInput(tag="in_no_guess", input_type=Boolean(optional=True), prefix="--no-guess", doc=InputDocumentation(doc="Don't guess format based on file suffix.")), ToolInput(tag="in_no_out", input_type=Boolean(optional=True), prefix="--no-out", doc=InputDocumentation(doc="Don't output the resulting graph (useful for checking\nvalidity of input).")), ToolInput(tag="in_warn", input_type=Boolean(optional=True), prefix="--warn", doc=InputDocumentation(doc="Output warnings to stderr (by default only critical\nerrors).\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rdfpipe_V0_1_0().translate("wdl", allow_empty_container=True)

