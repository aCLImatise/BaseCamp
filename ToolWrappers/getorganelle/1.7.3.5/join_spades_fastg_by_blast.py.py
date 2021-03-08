from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Float, Int

Join_Spades_Fastg_By_Blast_Py_V0_1_0 = CommandToolBuilder(tool="join_spades_fastg_by_blast.py", base_command=["join_spades_fastg_by_blast.py"], inputs=[ToolInput(tag="in_followed_your_input", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="followed by your input fastg file")), ToolInput(tag="in_followed_fasta_index", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="followed by Fasta index format")), ToolInput(tag="in_keep_temp", input_type=Boolean(optional=True), prefix="--keep-temp", doc=InputDocumentation(doc="Choose to disable deleting temp files produced by\nblast and this script")), ToolInput(tag="in_bt", input_type=Float(optional=True), prefix="--bt", doc=InputDocumentation(doc="Default: 0.60")), ToolInput(tag="in_max_gap", input_type=Int(optional=True), prefix="--max-gap", doc=InputDocumentation(doc="Default: 1500")), ToolInput(tag="in_con_all", input_type=Boolean(optional=True), prefix="--con-all", doc=InputDocumentation(doc="Choose to activate connecting all possible contigs.\nDefault: False")), ToolInput(tag="in_depth", input_type=Float(optional=True), prefix="--depth", doc=InputDocumentation(doc="Default: 1.0")), ToolInput(tag="in_which_blast", input_type=File(optional=True), prefix="--which-blast", doc=InputDocumentation(doc="Assign the path to BLAST binary files if not added to\nthe path. Default: try GetOrganelleDep/linux/ncbi-\nblast first, then $PATH\n"))], outputs=[], container="quay.io/biocontainers/getorganelle:1.7.3.5--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Join_Spades_Fastg_By_Blast_Py_V0_1_0().translate("wdl")

