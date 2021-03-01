from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, Float, String

Chisel_Cloning_V0_1_0 = CommandToolBuilder(tool="chisel_cloning", base_command=["chisel_cloning"], inputs=[ToolInput(tag="in_run_dir", input_type=Directory(optional=True), prefix="--rundir", doc=InputDocumentation(doc="Running directory (default: current directory)")), ToolInput(tag="in_max_diff", input_type=Int(optional=True), prefix="--maxdiff", doc=InputDocumentation(doc="Maximum haplotype-specific distance between the genome\nof cells in the same clone (default: 0.06, when -1 is\nchosen the maximum cluster method of SciPy is used)")), ToolInput(tag="in_minsize", input_type=Int(optional=True), prefix="--minsize", doc=InputDocumentation(doc="Minimum number of cells in a subpopulation to define a\nclone (default: 14)")), ToolInput(tag="in_refinement", input_type=Float(optional=True), prefix="--refinement", doc=InputDocumentation(doc="Maximum difference to assign noisy cells to the\nclosest clone (default: 0.0, note that 1.0 can be used\nto force the assigment of all cells)")), ToolInput(tag="in_seed", input_type=String(optional=True), prefix="--seed", doc=InputDocumentation(doc="Random seed for replication (default: None)")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="Input file with combined RDR and BAF per bin and per")), ToolInput(tag="in_cell", input_type=String(), position=1, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container="quay.io/biocontainers/chisel:0.0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chisel_Cloning_V0_1_0().translate("wdl")

