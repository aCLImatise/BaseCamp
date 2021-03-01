from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Sga_Stats_V0_1_0 = CommandToolBuilder(tool="sga_stats", base_command=["sga", "stats"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="use PREFIX for the names of the index files (default: prefix of the input file)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="use NUM threads to compute the overlaps (default: 1)")), ToolInput(tag="in_sample_rate", input_type=Int(optional=True), prefix="--sample-rate", doc=InputDocumentation(doc="use occurrence array sample rate of N in the FM-index. Higher values use significantly\nless memory at the cost of higher runtime. This value must be a power of 2 (default: 128)")), ToolInput(tag="in_km_er_size", input_type=Int(optional=True), prefix="--kmer-size", doc=InputDocumentation(doc="The length of the kmer to use. (default: 27)")), ToolInput(tag="in_num_reads", input_type=Int(optional=True), prefix="--num-reads", doc=InputDocumentation(doc="Only use N reads to compute the statistics")), ToolInput(tag="in_branch_cut_off", input_type=String(optional=True), prefix="--branch-cutoff", doc=InputDocumentation(doc="stop the overlap search at N branches. This lowers the compute time but will bias the statistics\naway from repetitive reads")), ToolInput(tag="in_run_lengths", input_type=Boolean(optional=True), prefix="--run-lengths", doc=InputDocumentation(doc="Print the run length distribution of the BWT")), ToolInput(tag="in_km_er_distribution", input_type=Boolean(optional=True), prefix="--kmer-distribution", doc=InputDocumentation(doc="Print the distribution of kmer counts")), ToolInput(tag="in_no_overlap", input_type=Boolean(optional=True), prefix="--no-overlap", doc=InputDocumentation(doc="Suppress the overlap-based error statistics (faster if you only want the k-mer distribution)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sga_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

