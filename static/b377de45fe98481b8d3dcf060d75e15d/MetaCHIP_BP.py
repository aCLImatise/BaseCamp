from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Boolean

Metachip_Bp_V0_1_0 = CommandToolBuilder(tool="MetaCHIP_BP", base_command=["MetaCHIP", "BP"], inputs=[ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="output prefix")), ToolInput(tag="in_grouping_rank", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="grouping rank")), ToolInput(tag="in_grouping_file", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="grouping file")), ToolInput(tag="in_cov", input_type=Int(optional=True), prefix="-cov", doc=InputDocumentation(doc="coverage cutoff, default: 75")), ToolInput(tag="in_al", input_type=Int(optional=True), prefix="-al", doc=InputDocumentation(doc="alignment length cutoff, default: 200")), ToolInput(tag="in_flk", input_type=Int(optional=True), prefix="-flk", doc=InputDocumentation(doc="the length of flanking sequences to plot (Kbp), default: 10")), ToolInput(tag="in_ip", input_type=Int(optional=True), prefix="-ip", doc=InputDocumentation(doc="identity percentile cutoff, default: 90")), ToolInput(tag="in_ei", input_type=Int(optional=True), prefix="-ei", doc=InputDocumentation(doc="end match identity cutoff, default: 80")), ToolInput(tag="in_number_threads_default", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads, default: 1")), ToolInput(tag="in_no_eb_check", input_type=Boolean(optional=True), prefix="-NoEbCheck", doc=InputDocumentation(doc="disable end break and contig match check for fast processing,\nnot recommend for metagenome-assembled genomes (MAGs)")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="-force", doc=InputDocumentation(doc="overwrite previous results")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="-quiet", doc=InputDocumentation(doc="Do not report progress")), ToolInput(tag="in_tmp", input_type=Boolean(optional=True), prefix="-tmp", doc=InputDocumentation(doc="keep temporary files"))], outputs=[], container="quay.io/biocontainers/metachip:1.10.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metachip_Bp_V0_1_0().translate("wdl")

