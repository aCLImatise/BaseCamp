from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Kmerinshort_V0_1_0 = CommandToolBuilder(tool="KmerInShort", base_command=["KmerInShort"], inputs=[ToolInput(tag="in_nb_cores", input_type=Boolean(optional=True), prefix="-nb-cores", doc=InputDocumentation(doc="(1 arg) :    number of cores  [default '0']")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="(1 arg) :    verbosity level  [default '1']")), ToolInput(tag="in_file", input_type=Boolean(optional=True), prefix="-file", doc=InputDocumentation(doc="(1 arg) :    input file")), ToolInput(tag="in_km_er_size", input_type=Boolean(optional=True), prefix="-kmer-size", doc=InputDocumentation(doc="(1 arg) :    ksize")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="(1 arg) :    output file  [default '']")), ToolInput(tag="in_offset", input_type=Boolean(optional=True), prefix="-offset", doc=InputDocumentation(doc="(1 arg) :    starting offset  [default '0']")), ToolInput(tag="in_step", input_type=Boolean(optional=True), prefix="-step", doc=InputDocumentation(doc="(1 arg) :    step  [default '1']")), ToolInput(tag="in_kval", input_type=Boolean(optional=True), prefix="-kval", doc=InputDocumentation(doc="(1 arg) :    file with kmer values   [default '']")), ToolInput(tag="in_dont_reverse", input_type=Boolean(optional=True), prefix="-dont-reverse", doc=InputDocumentation(doc="(0 arg) :    do not reverse kmers, count forward and reverse complement separately")), ToolInput(tag="in_freq", input_type=Boolean(optional=True), prefix="-freq", doc=InputDocumentation(doc="(0 arg) :    output frequency")), ToolInput(tag="in_per_seq", input_type=File(optional=True), prefix="-perSeq", doc=InputDocumentation(doc="(0 arg) :    one output file and count per fasta sequence"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="(1 arg) :    output file  [default '']")), ToolOutput(tag="out_per_seq", output_type=File(optional=True), selector=InputSelector(input_to_select="in_per_seq", type_hint=File()), doc=OutputDocumentation(doc="(0 arg) :    one output file and count per fasta sequence"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kmerinshort_V0_1_0().translate("wdl", allow_empty_container=True)

