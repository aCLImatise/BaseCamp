from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Compilesplicecands_V0_1_0 = CommandToolBuilder(tool="compileSpliceCands", base_command=["compileSpliceCands"], inputs=[ToolInput(tag="in_filename_potential_sites", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="<filename>      The potential splice sites in gff format")), ToolInput(tag="in_filename_genome_file", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="<filename>      The genome file in fasta format)")), ToolInput(tag="in_integer_defines_number", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="<integer>       Defines the number of potential splice site every potential splice site itself is compared with")), ToolInput(tag="in_float_has_be", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="<float>         has to be between 0 and 1 and  defines how much the average coverage may differ")), ToolInput(tag="in_integer_defines_arround", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="<integer>       defines how many bases arround the splice site should be checked.")), ToolInput(tag="in_argument_enables_output", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="<no argument>   enables debugging output")), ToolInput(tag="in_integer_maximum_length", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="<integer>       The maximum length an Intron can be. Default 500000(human genome)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compilesplicecands_V0_1_0().translate("wdl", allow_empty_container=True)

