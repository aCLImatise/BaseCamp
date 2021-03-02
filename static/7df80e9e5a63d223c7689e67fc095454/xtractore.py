from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Xtractore_V0_1_0 = CommandToolBuilder(tool="xtractore", base_command=["xtractore"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="print debugging output")), ToolInput(tag="in_id_file", input_type=Boolean(optional=True), prefix="--idfile", doc=InputDocumentation(doc=": FILE     file containing a list of feature IDs (1 per line\nwith no spaces); if provided, only features with\nIDs in this file will be extracted")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc=": FILE    file to which output sequences will be written;\ndefault is terminal (stdout)")), ToolInput(tag="in_type", input_type=Boolean(optional=True), prefix="--type", doc=InputDocumentation(doc=": STRING     feature type to extract; can be used multiple\ntimes to extract features of multiple types")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="print verbose warning and error messages")), ToolInput(tag="in_width", input_type=Boolean(optional=True), prefix="--width", doc=InputDocumentation(doc=": INT       width of each line of sequence in the Fasta\noutput; default is 80; set to 0 for no\nformatting\n")), ToolInput(tag="in_features_dot_gff_three", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sequences_dot_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc=": FILE    file to which output sequences will be written;\ndefault is terminal (stdout)"))], container="quay.io/biocontainers/aegean:0.16.0--hc2cb157_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xtractore_V0_1_0().translate("wdl")

