from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Isoseq3_Collapse_V0_1_0 = CommandToolBuilder(tool="isoseq3_collapse", base_command=["isoseq3", "collapse"], inputs=[ToolInput(tag="in_min_aln_coverage", input_type=Boolean(optional=True), prefix="--min-aln-coverage", doc=InputDocumentation(doc="FLOAT  Ignore alignments with less than minimum query read coverage. [0.99]")), ToolInput(tag="in_min_aln_identity", input_type=Boolean(optional=True), prefix="--min-aln-identity", doc=InputDocumentation(doc="FLOAT  Ignore alignments with less than minimum alignment identity. [0.95]")), ToolInput(tag="in_max_fuzzy_junction", input_type=Boolean(optional=True), prefix="--max-fuzzy-junction", doc=InputDocumentation(doc="INT    Ignore mismatches or indels shorter than or equal to N. [5]")), ToolInput(tag="in_num_threads", input_type=Boolean(optional=True), prefix="--num-threads", doc=InputDocumentation(doc="INT    Number of threads to use, 0 means autodetection. [0]")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]")), ToolInput(tag="in_log_file", input_type=Boolean(optional=True), prefix="--log-file", doc=InputDocumentation(doc="FILE   Log to a file, instead of stderr.")), ToolInput(tag="in_out_dot_fast_q", input_type=String(), position=0, doc=InputDocumentation(doc="STR    Collapsed transcripts in FASTQ"))], outputs=[], container="quay.io/biocontainers/isoseq3:3.4.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Isoseq3_Collapse_V0_1_0().translate("wdl")

