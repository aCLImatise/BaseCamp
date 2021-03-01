from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, Int, String

Checkm_Coverage_V0_1_0 = CommandToolBuilder(tool="checkm_coverage", base_command=["checkm", "coverage"], inputs=[ToolInput(tag="in_extension", input_type=Directory(optional=True), prefix="--extension", doc=InputDocumentation(doc="extension of bins (other files in directory are ignored) (default: fna)")), ToolInput(tag="in_all_reads", input_type=Boolean(optional=True), prefix="--all_reads", doc=InputDocumentation(doc="use all reads to estimate coverage instead of just those in proper pairs")), ToolInput(tag="in_min_align", input_type=Int(optional=True), prefix="--min_align", doc=InputDocumentation(doc="minimum alignment length as percentage of read length (default: 0.98)")), ToolInput(tag="in_max_edit_dist", input_type=Int(optional=True), prefix="--max_edit_dist", doc=InputDocumentation(doc="maximum edit distance as percentage of read length (default: 0.02)")), ToolInput(tag="in_min_qc", input_type=Int(optional=True), prefix="--min_qc", doc=InputDocumentation(doc="minimum quality score (in phred) (default: 15)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads (default: 1)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="suppress console output")), ToolInput(tag="in_bin_dir", input_type=String(), position=0, doc=InputDocumentation(doc="directory containing bins (fasta format)")), ToolInput(tag="in_output_file", input_type=String(), position=1, doc=InputDocumentation(doc="print results to file")), ToolInput(tag="in_bam_files", input_type=String(), position=2, doc=InputDocumentation(doc="BAM files to parse"))], outputs=[], container="quay.io/biocontainers/checkm-genome:1.1.3--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkm_Coverage_V0_1_0().translate("wdl")

