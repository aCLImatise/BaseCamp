from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Canon_Gff3_V0_1_0 = CommandToolBuilder(tool="canon_gff3", base_command=["canon-gff3"], inputs=[ToolInput(tag="in_infer", input_type=Boolean(optional=True), prefix="--infer", doc=InputDocumentation(doc="for transcript features lacking an explicitly\ndeclared gene feature as a parent, create this\nfeature on-they-fly")), ToolInput(tag="in_outfile", input_type=Boolean(optional=True), prefix="--outfile", doc=InputDocumentation(doc=": STRING    name of file to which GFF3 data will be\nwritten; default is terminal (stdout)")), ToolInput(tag="in_source", input_type=Boolean(optional=True), prefix="--source", doc=InputDocumentation(doc=": STRING     reset the source of each feature to the given")), ToolInput(tag="in_value", input_type=String(), position=0, doc=InputDocumentation(doc="-v|--version            print version number and exit"))], outputs=[], container="quay.io/biocontainers/aegean:0.16.0--hc2cb157_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Canon_Gff3_V0_1_0().translate("wdl")

