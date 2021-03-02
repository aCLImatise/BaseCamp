from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pbmm2_Index_V0_1_0 = CommandToolBuilder(tool="pbmm2_index", base_command=["pbmm2", "index"], inputs=[ToolInput(tag="in_preset", input_type=Boolean(optional=True), prefix="--preset", doc=InputDocumentation(doc="STR   Set alignment mode. See below for preset parameter details. Valid choices: (SUBREAD,\nCCS, ISOSEQ, UNROLLED). [SUBREAD]")), ToolInput(tag="in_int_kmer_size", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="INT   k-mer size (no larger than 28). [-1]")), ToolInput(tag="in_int_window_size", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="INT   Minimizer window size. [-1]")), ToolInput(tag="in_no_km_er_compression", input_type=Boolean(optional=True), prefix="--no-kmer-compression", doc=InputDocumentation(doc="Disable homopolymer-compressed k-mer (compression is active for SUBREAD & UNROLLED\npresets).")), ToolInput(tag="in_num_threads", input_type=Boolean(optional=True), prefix="--num-threads", doc=InputDocumentation(doc="INT   Number of threads to use, 0 means autodetection. [0]")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]")), ToolInput(tag="in_log_file", input_type=Boolean(optional=True), prefix="--log-file", doc=InputDocumentation(doc="FILE  Log to a file, instead of stderr.")), ToolInput(tag="in_out_dot_mmi", input_type=String(), position=0, doc=InputDocumentation(doc="STR   Output Reference Index"))], outputs=[], container="quay.io/biocontainers/pbmm2:1.4.0--h56fc30b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pbmm2_Index_V0_1_0().translate("wdl")

