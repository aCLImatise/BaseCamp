from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Directory, File

Aquila_Step2_V0_1_0 = CommandToolBuilder(tool="Aquila_step2", base_command=["Aquila_step2"], inputs=[ToolInput(tag="in_chr_start", input_type=Int(optional=True), prefix="--chr_start", doc=InputDocumentation(doc="chromosome start from, default = 1")), ToolInput(tag="in_chr_end", input_type=Int(optional=True), prefix="--chr_end", doc=InputDocumentation(doc="chromosome end by, default = 23")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out_dir", doc=InputDocumentation(doc="Required parameter; Directory to store assembly\nresults")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Required parameter; reference fasta file, run\n./install to download 'source/ref.fa' for GRCh38")), ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--num_threads", doc=InputDocumentation(doc="number of threads, default = 30, this correponds to\nnumber of small files get assembled simulateoulsy")), ToolInput(tag="in_num_threads_spades", input_type=Int(optional=True), prefix="--num_threads_spades", doc=InputDocumentation(doc="number of threads for spades, default = 5")), ToolInput(tag="in_block_len_use", input_type=Int(optional=True), prefix="--block_len_use", doc=InputDocumentation(doc="phase block len threshold, default = 100000\n")), ToolInput(tag="in_x_zhou_one_five_atcs_dot_stanford_dot_edu", input_type=Int(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aquila_Step2_V0_1_0().translate("wdl", allow_empty_container=True)

