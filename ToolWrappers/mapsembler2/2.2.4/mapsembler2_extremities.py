from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Mapsembler2_Extremities_V0_1_0 = CommandToolBuilder(tool="mapsembler2_extremities", base_command=["mapsembler2_extremities"], inputs=[ToolInput(tag="in_arg_kmer_size", input_type=Boolean(optional=True), prefix="--k", doc=InputDocumentation(doc="(1 arg) :    kmer size that will be used for mapsembler2  [default '']")), ToolInput(tag="in_starters", input_type=Boolean(optional=True), prefix="--starters", doc=InputDocumentation(doc="(1 arg) :    starters fasta file  [default '']")), ToolInput(tag="in_reads", input_type=Boolean(optional=True), prefix="--reads", doc=InputDocumentation(doc="(1 arg) :    reads dataset file name. Several reads sets can be provided, surrounded by ''s and separated by a space (e.g. --reads 'reads1.fa reads2.fa')  [default '']")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="(1 arg) :    output substarters file name  [default '']")), ToolInput(tag="in_min_solid_sub_km_er", input_type=Boolean(optional=True), prefix="--min-solid-subkmer", doc=InputDocumentation(doc="(1 arg) :    minimim abundance to keep a subkmer  [default '3']")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="-debug", doc=InputDocumentation(doc="(0 arg) :    debugging")), ToolInput(tag="in_nb_cores", input_type=Boolean(optional=True), prefix="-nb-cores", doc=InputDocumentation(doc="(1 arg) :    number of cores  [default '0']")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="(1 arg) :    verbosity level  [default '1']"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="(1 arg) :    output substarters file name  [default '']"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mapsembler2_Extremities_V0_1_0().translate("wdl", allow_empty_container=True)

