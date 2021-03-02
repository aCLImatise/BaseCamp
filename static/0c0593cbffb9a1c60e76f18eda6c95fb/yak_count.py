from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Yak_Count_V0_1_0 = CommandToolBuilder(tool="yak_count", base_command=["yak", "count"], inputs=[ToolInput(tag="in_kmer_size", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="k-mer size [31]")), ToolInput(tag="in_prefix_length", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="prefix length [10]")), ToolInput(tag="in_set_bloom_size", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="set Bloom filter size to 2**INT bits; 0 to disable [0]")), ToolInput(tag="in_use_int_functions", input_type=Int(optional=True), prefix="-H", doc=InputDocumentation(doc="use INT hash functions for Bloom filter [4]")), ToolInput(tag="in_number_worker_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of worker threads [4]")), ToolInput(tag="in_dump_count_table", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="dump the count hash table to FILE []")), ToolInput(tag="in_chunk_size", input_type=Int(optional=True), prefix="-K", doc=InputDocumentation(doc="chunk size [100m]")), ToolInput(tag="in_in_dot_fa", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/yak:0.1--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Yak_Count_V0_1_0().translate("wdl")

