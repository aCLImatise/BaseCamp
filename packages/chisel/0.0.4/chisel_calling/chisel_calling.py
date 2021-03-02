from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, String

Chisel_Calling_V0_1_0 = CommandToolBuilder(tool="chisel_calling", base_command=["chisel_calling"], inputs=[ToolInput(tag="in_run_dir", input_type=Directory(optional=True), prefix="--rundir", doc=InputDocumentation(doc="Running directory (default: current directory)")), ToolInput(tag="in_sensitivity", input_type=Int(optional=True), prefix="--sensitivity", doc=InputDocumentation(doc="Sensitivity of model selection for ploidy (default: 1,\nincrease this parameter to lower sensitivity to noisy\ndata, adjust this value (e.g. 2, 4, ..., 10, ...) to\nbetter deal with high-variance data (e.g. low\ncoverage, small number of cells, low number of phased\nSNPs, etc...)")), ToolInput(tag="in_max_ploidy", input_type=Int(optional=True), prefix="--maxploidy", doc=InputDocumentation(doc="Maximum total copy number to consider for balanced\ncluster (default: 4, corresponding to a WGD)")), ToolInput(tag="in_upper_k", input_type=Int(optional=True), prefix="--upperk", doc=InputDocumentation(doc="Maximum number of bin clusters (default: 100, use 0 to\nconsider maximum number of clusters)")), ToolInput(tag="in_seed", input_type=String(optional=True), prefix="--seed", doc=InputDocumentation(doc="Random seed for replication (default: None)")), ToolInput(tag="in_jobs", input_type=Int(optional=True), prefix="--jobs", doc=InputDocumentation(doc="Number of parallele jobs to use (default: equal to\nnumber of available processors)\n")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="Input file with combined RDR and BAF per bin and per\ncell (default: combo/combo.tsv)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chisel_Calling_V0_1_0().translate("wdl", allow_empty_container=True)

