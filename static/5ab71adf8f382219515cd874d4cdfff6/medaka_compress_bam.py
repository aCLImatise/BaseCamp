from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Array, String, Int

Medaka_Compress_Bam_V0_1_0 = CommandToolBuilder(tool="medaka_compress_bam", base_command=["medaka", "compress_bam"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Verbose logging of debug information. (default: 20)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Minimal logging; warnings only). (default: 20)")), ToolInput(tag="in_regions", input_type=Array(t=String(), optional=True), prefix="--regions", doc=InputDocumentation(doc="Genomic regions to analyse, or a bed file. (default:\nNone)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads for parallel execution. (default: 1)")), ToolInput(tag="in_use_fast_five_info", input_type=Int(optional=True), prefix="--use_fast5_info", doc=InputDocumentation(doc="<index> <fast5_dir> <index>\nRoot directory containing the fast5 files and .tsv\nfile with columns filename and read_id. (default:\nNone)\n")), ToolInput(tag="in_bam_input", input_type=String(), position=0, doc=InputDocumentation(doc="Bam file to compress.")), ToolInput(tag="in_bam_output", input_type=String(), position=1, doc=InputDocumentation(doc="Output bam file.")), ToolInput(tag="in_ref_fname", input_type=String(), position=2, doc=InputDocumentation(doc="Reference fasta file used for `bam_input`."))], outputs=[], container="quay.io/biocontainers/medaka:1.2.3--py36hbcc4abb_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medaka_Compress_Bam_V0_1_0().translate("wdl")

