from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String

Funannotate_Fix_V0_1_0 = CommandToolBuilder(tool="funannotate_fix", base_command=["funannotate", "fix"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="Annotated genome in GenBank format.")), ToolInput(tag="in_tbl", input_type=Boolean(optional=True), prefix="--tbl", doc=InputDocumentation(doc="NCBI tbl annotation file.")), ToolInput(tag="in_drop", input_type=Boolean(optional=True), prefix="--drop", doc=InputDocumentation(doc="Gene models to remove/drop from annotation. File with locus_tag 1 per line.")), ToolInput(tag="in_out", input_type=Directory(optional=True), prefix="--out", doc=InputDocumentation(doc="Output folder")), ToolInput(tag="in_tbl_two_asn", input_type=Boolean(optional=True), prefix="--tbl2asn", doc=InputDocumentation(doc="Parameters for tbl2asn. Default: '-l paired-ends'")), ToolInput(tag="in_arguments", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output folder"))], container="quay.io/biocontainers/funannotate:1.8.7--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Funannotate_Fix_V0_1_0().translate("wdl")

