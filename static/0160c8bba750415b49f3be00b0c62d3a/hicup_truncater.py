from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Hicup_Truncater_V0_1_0 = CommandToolBuilder(tool="hicup_truncater", base_command=["hicup_truncater"], inputs=[ToolInput(tag="in_config", input_type=Boolean(optional=True), prefix="--config", doc=InputDocumentation(doc="Name of the optional configuration file")), ToolInput(tag="in_no_fill", input_type=Boolean(optional=True), prefix="--nofill", doc=InputDocumentation(doc="Hi-C protocol did NOT include a fill-in of sticky ends prior to\nre-ligation and therefore reads shall be truncated at\nthe restriction site sequence. This feature is only supported for\nsingle restriction enzyme Hi-C.")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Directory to write output files")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress all progress reports")), ToolInput(tag="in_re_one", input_type=Boolean(optional=True), prefix="--re1", doc=InputDocumentation(doc="Restriction enzyme recognition sequence. e.g. A^GATCT,BglII\nHiCUP can accomodate more than one enzyme and N nucleotides\ne.g. A^GATCT,BglII:A^AGCTT,HindIII:^GANTC,myRE.")), ToolInput(tag="in_sequences", input_type=Boolean(optional=True), prefix="--sequences", doc=InputDocumentation(doc="Instead of specifying a restriction enzyme recognition sequence,\nspecify the ligation sequences directly")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use, allowing simultaneous processing  of\ndifferent files")), ToolInput(tag="in_zip", input_type=Boolean(optional=True), prefix="--zip", doc=InputDocumentation(doc="Compress output using gzip"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Directory to write output files"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicup_Truncater_V0_1_0().translate("wdl", allow_empty_container=True)

