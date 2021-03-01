from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Falconc_Paf_Filter_V0_1_0 = CommandToolBuilder(tool="falconc_paf_filter", base_command=["falconc", "paf-filter"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in__faifn_string", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="=, --fai-fn=      string  REQUIRED  input fasta-index filename (as in\nfoo.fasta.fai, but assume foo.fasta is\nnext to it; foo.fasta must then exist,\nbut it can be empty since it is ignored)")), ToolInput(tag="in__inpaffn_string", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="=, --in-paf-fn=   string  '-'       paf filename ('-' => stdin)")), ToolInput(tag="in_outpaffn_string_filename", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="=, --out-paf-fn=  string  '-'       output paf filename, with only the\ncontigs inside the fasta ('-' => stdout)\n")), ToolInput(tag="in_paf_filter", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outpaffn_string_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outpaffn_string_filename", type_hint=File()), doc=OutputDocumentation(doc="=, --out-paf-fn=  string  '-'       output paf filename, with only the\ncontigs inside the fasta ('-' => stdout)\n"))], container="quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Paf_Filter_V0_1_0().translate("wdl")

