from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Logcounter_V0_1_0 = CommandToolBuilder(tool="logcounter", base_command=["logcounter"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="use N parallel threads [1]")), ToolInput(tag="in_km_er", input_type=Int(optional=True), prefix="--kmer", doc=InputDocumentation(doc="the size of a k-mer")), ToolInput(tag="in_seed", input_type=String(optional=True), prefix="--seed", doc=InputDocumentation(doc="the seed value used")), ToolInput(tag="in_bloom_size", input_type=Int(optional=True), prefix="--bloom-size", doc=InputDocumentation(doc="size of bloom filter [500M]")), ToolInput(tag="in_chastity", input_type=Boolean(optional=True), prefix="--chastity", doc=InputDocumentation(doc="discard unchaste reads [default]")), ToolInput(tag="in_no_chastity", input_type=Boolean(optional=True), prefix="--no-chastity", doc=InputDocumentation(doc="do not discard unchaste reads")), ToolInput(tag="in_trim_masked", input_type=Boolean(optional=True), prefix="--trim-masked", doc=InputDocumentation(doc="trim masked bases from the ends of reads")), ToolInput(tag="in_no_trim_masked", input_type=Boolean(optional=True), prefix="--no-trim-masked", doc=InputDocumentation(doc="do not trim masked bases from the ends\nof reads [default]")), ToolInput(tag="in_trim_quality", input_type=String(optional=True), prefix="--trim-quality", doc=InputDocumentation(doc="trim bases from the ends of reads whose\nquality is less than the threshold")), ToolInput(tag="in_standard_quality", input_type=Boolean(optional=True), prefix="--standard-quality", doc=InputDocumentation(doc="zero quality is `!' (33)\ndefault for FASTQ and SAM files")), ToolInput(tag="in_illumina_quality", input_type=Boolean(optional=True), prefix="--illumina-quality", doc=InputDocumentation(doc="zero quality is `@' (64)\ndefault for qseq and export files")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output"))], outputs=[], container="quay.io/biocontainers/abyss:2.3.1--hd403d74_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Logcounter_V0_1_0().translate("wdl")

