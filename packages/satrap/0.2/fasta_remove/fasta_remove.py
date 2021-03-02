from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Fasta_Remove_V0_1_0 = CommandToolBuilder(tool="fasta_remove", base_command=["fasta_remove"], inputs=[ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="-fasta", doc=InputDocumentation(doc="(string)                  Fasta file as input.")), ToolInput(tag="in_trim_from_space", input_type=Boolean(optional=True), prefix="-trim_from_space", doc=InputDocumentation(doc="trims name at first space")), ToolInput(tag="in_int_remove_sequence_bases", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="(int)                    remove sequence if bases (non Ns)\nare >= set value")), ToolInput(tag="in_int_remove_sequence_set", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="(int)                    remove sequence if Ns/Contig_len\nis > set value")), ToolInput(tag="in_oases", input_type=Boolean(optional=True), prefix="-oases", doc=InputDocumentation(doc="Format the oases output")), ToolInput(tag="in_scaffolds", input_type=Boolean(optional=True), prefix="-scaffolds", doc=InputDocumentation(doc="It consider oases scaffolds. Contigs\nwill be separated by 10 Ns.")), ToolInput(tag="in_log", input_type=Boolean(optional=True), prefix="-log", doc=InputDocumentation(doc="(string)                 log file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Remove_V0_1_0().translate("wdl", allow_empty_container=True)

