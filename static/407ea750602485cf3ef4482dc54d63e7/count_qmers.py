from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Count_Qmers_V0_1_0 = CommandToolBuilder(tool="count_qmers", base_command=["count_qmers"], inputs=[ToolInput(tag="in_fastq_file_count", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="fastq file to count")), ToolInput(tag="in_length_of_kmer", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="Length of kmer")), ToolInput(tag="in_gigabyte_limit_limited", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="Gigabyte limit on RAM. If limited, the output will\ncontain redundancies")), ToolInput(tag="in_define_hash_table", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="Define hash table size explicitly. [Default: chosen via k]")), ToolInput(tag="in_maximum_kmer_count", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Maximum k-mer count. [Default: 500]")), ToolInput(tag="in_quality_value_ascii", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="Quality value ascii scale, generally 64 or 33.  If\nnot specified, it will guess.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Count_Qmers_V0_1_0().translate("wdl", allow_empty_container=True)

