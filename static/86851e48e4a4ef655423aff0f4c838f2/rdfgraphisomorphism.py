from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Rdfgraphisomorphism_V0_1_0 = CommandToolBuilder(tool="rdfgraphisomorphism", base_command=["rdfgraphisomorphism"], inputs=[ToolInput(tag="in_stdin", input_type=Boolean(optional=True), prefix="--stdin", doc=InputDocumentation(doc="Load from STDIN as well")), ToolInput(tag="in_format", input_type=Int(optional=True), prefix="--format", doc=InputDocumentation(doc="The format of the RDF document(s) to compareOne of\n'xml','n3','trix', 'nt', or 'rdfa'.  The default is xml\n")), ToolInput(tag="in_file_n", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rdfgraphisomorphism_V0_1_0().translate("wdl", allow_empty_container=True)

