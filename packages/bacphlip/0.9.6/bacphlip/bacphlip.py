from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Bacphlip_V0_1_0 = CommandToolBuilder(tool="bacphlip", base_command=["bacphlip"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input_file", doc=InputDocumentation(doc="Should be a valid path to a single genome (nucleotide)\nFASTA file containing only 1 record/contig.")), ToolInput(tag="in_force_overwrite", input_type=Boolean(optional=True), prefix="--force_overwrite", doc=InputDocumentation(doc="Whether to overwrite all existing files that will be\ncreated if they exist. Default is False")), ToolInput(tag="in_multi_fast_a", input_type=Boolean(optional=True), prefix="--multi_fasta", doc=InputDocumentation(doc="By default, BACPHLIP assumes that the input file\ncontains one genome (nucleotide) sequence record.\nUsers providing a multi_fasta input file must use this\nflag. Note that each record should be uniquely named\nand should contain complete genomes for different\nphages. BACPHLIP should not be run on incomplete /\nfragmented genomes spanning mulitple records.")), ToolInput(tag="in_local_hmm_search", input_type=File(optional=True), prefix="--local_hmmsearch", doc=InputDocumentation(doc="By default, BACPHLIP assumes a system install of\n'hmmsearch'. Use this flag to provide a custom path to\na local install of hmmsearch if necessary.\n"))], outputs=[], container="quay.io/biocontainers/bacphlip:0.9.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bacphlip_V0_1_0().translate("wdl")

