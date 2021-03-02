from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pancake_Seeddb_V0_1_0 = CommandToolBuilder(tool="pancake_seeddb", base_command=["pancake", "seeddb"], inputs=[ToolInput(tag="in_split_blocks", input_type=Boolean(optional=True), prefix="--split-blocks", doc=InputDocumentation(doc="Write seeds for each block into a separate file.")), ToolInput(tag="in_km_er_size", input_type=Boolean(optional=True), prefix="--kmer-size", doc=InputDocumentation(doc="INT   Kmer size for indexing. [30]")), ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="--window", doc=InputDocumentation(doc="INT   Minimizer window size for indexing. [80]")), ToolInput(tag="in_space", input_type=Boolean(optional=True), prefix="--space", doc=InputDocumentation(doc="INT   Seed spacing. [0]")), ToolInput(tag="in_use_hpc", input_type=Boolean(optional=True), prefix="--use-hpc", doc=InputDocumentation(doc="Enable homopolymer compression.")), ToolInput(tag="in_max_hpc_len", input_type=Boolean(optional=True), prefix="--max-hpc-len", doc=InputDocumentation(doc="INT   Maximum length of a homopolymer to compress. [10]")), ToolInput(tag="in_no_rc", input_type=Boolean(optional=True), prefix="--no-rc", doc=InputDocumentation(doc="Do not produce seeds from the reverse complement strand.")), ToolInput(tag="in_num_threads", input_type=Boolean(optional=True), prefix="--num-threads", doc=InputDocumentation(doc="INT   Number of threads to use, 0 means autodetection. [0]")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]")), ToolInput(tag="in_log_file", input_type=Boolean(optional=True), prefix="--log-file", doc=InputDocumentation(doc="FILE  Log to a file, instead of stderr.")), ToolInput(tag="in_input_dot_seq_db", input_type=String(), position=0, doc=InputDocumentation(doc="STR   Path to the SeqDB to process.")), ToolInput(tag="in_prefix", input_type=String(), position=1, doc=InputDocumentation(doc="STR   The prefix of the output SeedDB files."))], outputs=[], container="quay.io/biocontainers/pbipa:1.3.2--hee625c5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pancake_Seeddb_V0_1_0().translate("wdl")

