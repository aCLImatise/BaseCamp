from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Falconc_Circ_Orient_V0_1_0 = CommandToolBuilder(tool="falconc_circ_orient", base_command=["falconc", "circ-orient"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in_inputfn_string_required", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="=, --input-fn=   string  REQUIRED  fasta (or fastq) file of circular")), ToolInput(tag="in_wlfn_string_list", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="=, --wl-fn=      string  ''        white list of sequences to rotate, one\nper line, no spaces, no trailing spaces")), ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="--window", doc=InputDocumentation(doc="=          int     500       window size to caculate gc-skew")), ToolInput(tag="in__step_step", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="=, --step=       int     200       window step")), ToolInput(tag="in_print", input_type=Boolean(optional=True), prefix="--print", doc=InputDocumentation(doc="bool    false     print skew data to files\n('SEQ.gc_skew.txt'), one per sequence\n")), ToolInput(tag="in_sequences", input_type=String(), position=0, doc=InputDocumentation(doc="-o=, --output-fn=  string  REQUIRED  fasta (or fastq) file output"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Circ_Orient_V0_1_0().translate("wdl", allow_empty_container=True)

