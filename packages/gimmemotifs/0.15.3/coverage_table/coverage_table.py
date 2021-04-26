from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Coverage_Table_V0_1_0 = CommandToolBuilder(tool="coverage_table", base_command=["coverage_table"], inputs=[ToolInput(tag="in_peaks", input_type=File(optional=True), prefix="--peaks", doc=InputDocumentation(doc="BED file containing peaks")), ToolInput(tag="in_data_files_bam", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="[FILE [FILE ...]], --datafile [FILE [FILE ...]]\ndata files (BAM, BED or bigWig format)")), ToolInput(tag="in_window", input_type=Int(optional=True), prefix="--window", doc=InputDocumentation(doc="window size (default 200)")), ToolInput(tag="in_log_transform", input_type=Boolean(optional=True), prefix="--logtransform", doc=InputDocumentation(doc="Log transfrom")), ToolInput(tag="in_normalization", input_type=String(optional=True), prefix="--normalization", doc=InputDocumentation(doc="Normalization: none, quantile or scale")), ToolInput(tag="in_top", input_type=String(optional=True), prefix="--top", doc=InputDocumentation(doc="Select regions.")), ToolInput(tag="in_top_method", input_type=String(optional=True), prefix="--topmethod", doc=InputDocumentation(doc="Method to select regions (var, std, mean or random)")), ToolInput(tag="in_keep_duplicate_reads", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="keep duplicate reads (removed by default)")), ToolInput(tag="in_keep_reads_mapq", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc="keep reads with mapq 0 (removed by default)")), ToolInput(tag="in_n_threads", input_type=Int(optional=True), prefix="--nthreads", doc=InputDocumentation(doc="Number of threads")), ToolInput(tag="in_file", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/gimmemotifs:0.15.3--py38hc37a69a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coverage_Table_V0_1_0().translate("wdl")

