from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Directory, File, String, Boolean

Bxcl_Seqqc_V0_1_0 = CommandToolBuilder(tool="bxcl_seqqc", base_command=["bxcl_seqqc"], inputs=[ToolInput(tag="in_files", input_type=Int(optional=True), prefix="--files", doc=InputDocumentation(doc="F1    Pair of input FastQ files.")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory. (default: current directory)")), ToolInput(tag="in_tmpdir", input_type=File(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="Temp directory. (default: system tmp location)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Max number of threads to use. NOTE: not allstages use\nall threads. (default: 2)")), ToolInput(tag="in_adapt_seq", input_type=File(optional=True), prefix="--adaptseq", doc=InputDocumentation(doc="The adapter sequence to be trimmed from the FastQ file.\n(default: Illumina TruSeq Universal Adapter)")), ToolInput(tag="in_qc_conf", input_type=File(optional=True), prefix="--qcconf", doc=InputDocumentation(doc="Location of config file. (default: internal config)")), ToolInput(tag="in_trim", input_type=String(optional=True), prefix="--trim", doc=InputDocumentation(doc="The type of trimming to be done on the paired\nsequences: [A]dapter or [Q]uality trimming, or\n[F]ull/both. WARNING: For standalone execution of\nruntrim only! (default: [F]ull)")), ToolInput(tag="in_print_config", input_type=Boolean(optional=True), prefix="--printconfig", doc=InputDocumentation(doc="Print example config files to current directory.")), ToolInput(tag="in_fone", input_type=Int(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory. (default: current directory)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bxcl_Seqqc_V0_1_0().translate("wdl", allow_empty_container=True)

