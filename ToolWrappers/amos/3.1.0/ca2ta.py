from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Ca2Ta_V0_1_0 = CommandToolBuilder(tool="ca2ta", base_command=["ca2ta"], inputs=[ToolInput(tag="in_select", input_type=String(optional=True), prefix="-select", doc=InputDocumentation(doc="Only performs this operation for contigs and unitigs\nspecified in fname")), ToolInput(tag="in_contigs", input_type=Boolean(optional=True), prefix="-contigs", doc=InputDocumentation(doc="Does not report unitigs in .tasm")), ToolInput(tag="in_no_fast_a", input_type=Boolean(optional=True), prefix="-nofasta", doc=InputDocumentation(doc="Do not create .fasta output")), ToolInput(tag="in_just_fast_a", input_type=Boolean(optional=True), prefix="-justfasta", doc=InputDocumentation(doc="Only create .fasta output")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="Output prefix")), ToolInput(tag="in_no_names", input_type=Boolean(optional=True), prefix="-nonames", doc=InputDocumentation(doc="Uses Ids rather than trying to figure out seqnames")), ToolInput(tag="in_check", input_type=Boolean(optional=True), prefix="-check", doc=InputDocumentation(doc="Prints out those seqnames that are shorter than MINSEQ")), ToolInput(tag="in_min_seq", input_type=Boolean(optional=True), prefix="-minseq", doc=InputDocumentation(doc="sets MINSEQ.  Default is 64")), ToolInput(tag="in_filter", input_type=Boolean(optional=True), prefix="-filter", doc=InputDocumentation(doc="filters the .frg file for sequences shorter than MINSEQ")), ToolInput(tag="in_no_qual", input_type=Boolean(optional=True), prefix="-noqual", doc=InputDocumentation(doc="doesnt create .qual file")), ToolInput(tag="in_mates", input_type=Boolean(optional=True), prefix="-mates", doc=InputDocumentation(doc="creates a .mates file indicating which sequences are mates"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ca2Ta_V0_1_0().translate("wdl", allow_empty_container=True)

