from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pblayout_Tp2Seq_V0_1_0 = CommandToolBuilder(tool="pblayout_tp2seq", base_command=["pblayout", "tp2seq"], inputs=[ToolInput(tag="in_use_seq_ids", input_type=Boolean(optional=True), prefix="--use-seq-ids", doc=InputDocumentation(doc="The input tiling path contains sequence IDs instead of read names.")), ToolInput(tag="in_use_hpc", input_type=Boolean(optional=True), prefix="--use-hpc", doc=InputDocumentation(doc="Assumes that the input tiling paths were constructed in the homopolymer-compressed space,\nand expands the sequences during sequence construction.")), ToolInput(tag="in_realign", input_type=Boolean(optional=True), prefix="--realign", doc=InputDocumentation(doc="Realigns the tiling path edges to improve tiling coordinates.")), ToolInput(tag="in_batch_mb", input_type=Boolean(optional=True), prefix="--batch-mb", doc=InputDocumentation(doc="INT   Batch size in Mbp. Reads for a batch of contigs are loaded at once so that all reads total\nin roughly this size. [1000]")), ToolInput(tag="in_num_threads", input_type=Boolean(optional=True), prefix="--num-threads", doc=InputDocumentation(doc="INT   Number of threads to use, 0 means autodetection. [0]")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]")), ToolInput(tag="in_log_file", input_type=Boolean(optional=True), prefix="--log-file", doc=InputDocumentation(doc="FILE  Log to a file, instead of stderr.")), ToolInput(tag="in_in_reads_fn", input_type=String(), position=0, doc=InputDocumentation(doc="STR   Path to a SeqDB file with reads which will be used to compose the sequences.")), ToolInput(tag="in_in_tiling_path_fn", input_type=String(), position=1, doc=InputDocumentation(doc="STR   Path to a TilingPath file.")), ToolInput(tag="in_out_fn", input_type=String(), position=2, doc=InputDocumentation(doc="STR   Output FASTA filename."))], outputs=[], container="quay.io/biocontainers/pbipa:1.3.2--hee625c5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pblayout_Tp2Seq_V0_1_0().translate("wdl")

