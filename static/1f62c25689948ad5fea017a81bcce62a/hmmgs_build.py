from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Hmmgs_Build_V0_1_0 = CommandToolBuilder(tool="hmmgs_build", base_command=["hmmgs", "build"], inputs=[ToolInput(tag="in_read_file", input_type=String(), position=0, doc=InputDocumentation(doc="fasta or fastq files containing the reads to build the graph from ")), ToolInput(tag="in_bloom_out", input_type=String(), position=1, doc=InputDocumentation(doc="file to write the bloom filter to ")), ToolInput(tag="in_km_er_size", input_type=String(), position=2, doc=InputDocumentation(doc="should be multiple of 3, (recommend 45, maximum 63) ")), ToolInput(tag="in_bloom_size_log_two", input_type=Int(), position=3, doc=InputDocumentation(doc="the size of the bloom filter (or memory needed) is 2^bloomSizeLog2 bits, increase if the predicted false positive rate is greater than 1%")), ToolInput(tag="in_cut_off", input_type=String(), position=4, doc=InputDocumentation(doc="minimum number of times a kmer has to be observed in SEQFILE to be included in the final bloom filter")), ToolInput(tag="in_hash_count", input_type=String(), position=5, doc=InputDocumentation(doc="number of hash functions, default 4")), ToolInput(tag="in_bit_set_size_log_two", input_type=Int(), position=6, doc=InputDocumentation(doc="the size of one bitSet 2^bitsetSizeLog2, recommend 30, usually not changed"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmgs_Build_V0_1_0().translate("wdl", allow_empty_container=True)

