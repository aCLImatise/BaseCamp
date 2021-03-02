from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pblayout_Tp2Seq_V0_1_0 = CommandToolBuilder(tool="pblayout_tp2seq", base_command=["pblayout", "tp2seq"], inputs=[ToolInput(tag="in_use_seq_ids", input_type=Boolean(optional=True), prefix="--use-seq-ids", doc=InputDocumentation(doc="The input tiling path contains sequence IDs instead\nof read names.")), ToolInput(tag="in_use_hpc", input_type=Boolean(optional=True), prefix="--use-hpc", doc=InputDocumentation(doc="Assumes that the input tiling paths were constructed\nin the homopolymer-compressed space, and expands the\nsequences during sequence construction.")), ToolInput(tag="in_realign", input_type=Boolean(optional=True), prefix="--realign", doc=InputDocumentation(doc="Realigns the tiling path edges to improve tiling")), ToolInput(tag="in_num_threads", input_type=Boolean(optional=True), prefix="--num-threads", doc=InputDocumentation(doc="INT   Number of threads to use, 0 means autodetection. [0]")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="STR   Set log level. Valid choices: (TRACE, DEBUG, INFO,\nWARN, FATAL). [WARN]")), ToolInput(tag="in_log_file", input_type=Boolean(optional=True), prefix="--log-file", doc=InputDocumentation(doc="FILE  Log to a file, instead of stderr.")), ToolInput(tag="in_in_reads_fn", input_type=String(), position=0, doc=InputDocumentation(doc="STR   Path to a SeqDB file with reads which will be used\nto compose the sequences.")), ToolInput(tag="in_in_tiling_path_fn", input_type=String(), position=1, doc=InputDocumentation(doc="STR   Path to a TilingPath file.")), ToolInput(tag="in_out_fn", input_type=String(), position=2, doc=InputDocumentation(doc="STR   Output FASTA filename.")), ToolInput(tag="in_coordinates_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--batch-mb         INT   Batch size in Mbp. Reads for a batch of contigs are"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pblayout_Tp2Seq_V0_1_0().translate("wdl", allow_empty_container=True)

