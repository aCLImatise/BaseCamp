from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, Array, String, Directory

Run_Prokka_V0_1_0 = CommandToolBuilder(tool="run_prokka", base_command=["run_prokka"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads to use (default=1)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="print additional output")), ToolInput(tag="in_input", input_type=Array(t=String(), optional=True), prefix="--input", doc=InputDocumentation(doc="input fasta files")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out_dir", doc=InputDocumentation(doc="location of an output directory")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="overwrite old commands")), ToolInput(tag="in_add_pro_kk_a_cmds", input_type=String(optional=True), prefix="--add_prokka_cmds", doc=InputDocumentation(doc="additional commands to supply to Prokka (these are not\nchecked!)")), ToolInput(tag="in_num_training", input_type=Int(optional=True), prefix="--num_training", doc=InputDocumentation(doc="number of genomes to use in training prodigal\n(default=10)\n"))], outputs=[ToolOutput(tag="out_out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="location of an output directory"))], container="quay.io/biocontainers/panaroo:1.2.4--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Prokka_V0_1_0().translate("wdl")

