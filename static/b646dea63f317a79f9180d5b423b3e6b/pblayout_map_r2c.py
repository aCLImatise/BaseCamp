from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Pblayout_Map_R2C_V0_1_0 = CommandToolBuilder(tool="pblayout_map_r2c", base_command=["pblayout", "map-r2c"], inputs=[ToolInput(tag="in_alias_seq_db", input_type=Boolean(optional=True), prefix="--alias-seqdb", doc=InputDocumentation(doc="STR    Specifies the SeqDB to use for id-to-name lookup for every read in the tiling path.")), ToolInput(tag="in_max_diag_diff", input_type=Boolean(optional=True), prefix="--max-diag-diff", doc=InputDocumentation(doc="INT    Maximum diagonal difference for clustering of read-to-contig projections during mapping.\n[100]")), ToolInput(tag="in_secondary_frac", input_type=Boolean(optional=True), prefix="--secondary-frac", doc=InputDocumentation(doc="FLOAT  If two mappings overlap by more than this fraction, one will be marked as secondary and\nremoved from output. [0.5]")), ToolInput(tag="in_max_dist_from_edge", input_type=Boolean(optional=True), prefix="--max-dist-from-edge", doc=InputDocumentation(doc="INT    For each mapped region, all overlap coordinates within this distance from the\nleft-/right-most query position will be recollected to find the optimal mapping\nposition. This allows for some 'jitter' in mapping. [3]")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]")), ToolInput(tag="in_log_file", input_type=Boolean(optional=True), prefix="--log-file", doc=InputDocumentation(doc="FILE   Log to a file, instead of stderr.")), ToolInput(tag="in_m_four", input_type=Int(), position=0, doc=InputDocumentation(doc="STR    Input M4.")), ToolInput(tag="in_tp", input_type=String(), position=1, doc=InputDocumentation(doc="STR    Input Tiling path file.")), ToolInput(tag="in_ctg_lens", input_type=String(), position=2, doc=InputDocumentation(doc="STR    File containing contig lengths. First column is the contigh name, second column contig\nlength, other columns are ignored. Can be space or tab separated. The .fai files are\nacceptable."))], outputs=[], container="quay.io/biocontainers/pbipa:1.3.2--hee625c5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pblayout_Map_R2C_V0_1_0().translate("wdl")

