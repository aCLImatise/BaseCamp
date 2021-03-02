from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float

Ptrimmer_V0_1_0 = CommandToolBuilder(tool="ptrimmer", base_command=["ptrimmer"], inputs=[ToolInput(tag="in_keep", input_type=Boolean(optional=True), prefix="--keep", doc=InputDocumentation(doc="keep the complete reads if failed to locate primer\nsequence [default: discard the reads]")), ToolInput(tag="in_seqtype", input_type=Boolean(optional=True), prefix="--seqtype", doc=InputDocumentation(doc="[required] the sequencing type [single|pair]")), ToolInput(tag="in_amp_file", input_type=Boolean(optional=True), prefix="--ampfile", doc=InputDocumentation(doc="[required] input amplicon file [.txt]")), ToolInput(tag="in_read_one", input_type=Boolean(optional=True), prefix="--read1", doc=InputDocumentation(doc="[required] read1(forward) for fastq file [.fq|.gz]")), ToolInput(tag="in_trim_one", input_type=Boolean(optional=True), prefix="--trim1", doc=InputDocumentation(doc="[required] the trimed read1 of fastq file")), ToolInput(tag="in_read_two", input_type=Boolean(optional=True), prefix="--read2", doc=InputDocumentation(doc="[optional] read2(reverse) for fastq file (paired-end seqtype) [.fq|.gz]")), ToolInput(tag="in_trim_two", input_type=Boolean(optional=True), prefix="--trim2", doc=InputDocumentation(doc="[optional] the trimed read2 of fastq file (paired-end seqtype)")), ToolInput(tag="in_summary", input_type=Boolean(optional=True), prefix="--summary", doc=InputDocumentation(doc="[optional] the trimming information of each amplicon [default: Summary.ampcount]")), ToolInput(tag="in_min_qual", input_type=Boolean(optional=True), prefix="--minqual", doc=InputDocumentation(doc="[optional] the minimum average quality to keep after triming [20]")), ToolInput(tag="in_km_er", input_type=Boolean(optional=True), prefix="--kmer", doc=InputDocumentation(doc="[optional] the kmer lenght for indexing [8]")), ToolInput(tag="in_mismatch", input_type=Boolean(optional=True), prefix="--mismatch", doc=InputDocumentation(doc="[optional] the maxmum mismatch for primer seq [3]")), ToolInput(tag="in_one_dot_three_dot_three", input_type=Float(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ptrimmer_V0_1_0().translate("wdl", allow_empty_container=True)

