from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Unitig_Counter_V0_1_0 = CommandToolBuilder(tool="unitig_counter", base_command=["unitig-counter"], inputs=[ToolInput(tag="in_gzip", input_type=Boolean(optional=True), prefix="-gzip", doc=InputDocumentation(doc="(0 arg) :    Compress unitig output using gzip.")), ToolInput(tag="in_strains", input_type=Boolean(optional=True), prefix="-strains", doc=InputDocumentation(doc="(1 arg) :    A text file describing the strains containing 2 columns: 1) ID of the strain; 2) Path to a multi-fasta file containing the sequences of the strain. This file needs a header.")), ToolInput(tag="in_arg_kmer_size", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="(1 arg) :    K-mer size.  [default '31']")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="-output", doc=InputDocumentation(doc="(1 arg) :    Path to the folder where the final and temporary files will be stored.  [default 'output']")), ToolInput(tag="in_nb_cores", input_type=Boolean(optional=True), prefix="-nb-cores", doc=InputDocumentation(doc="(1 arg) :    number of cores  [default '0']")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="(1 arg) :    verbosity level  [default '1']")), ToolInput(tag="in_version", input_type=Boolean(optional=True), prefix="-version", doc=InputDocumentation(doc="(0 arg) :    version"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="(1 arg) :    Path to the folder where the final and temporary files will be stored.  [default 'output']"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Unitig_Counter_V0_1_0().translate("wdl", allow_empty_container=True)

