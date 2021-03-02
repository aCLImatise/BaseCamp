from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

_Cutgextract_V0_1_0 = CommandToolBuilder(tool="_cutgextract", base_command=["_cutgextract"], inputs=[ToolInput(tag="in_release", input_type=Boolean(optional=True), prefix="-release", doc=InputDocumentation(doc="string     CUTG release (Any string)")), ToolInput(tag="in_wild_spec", input_type=Boolean(optional=True), prefix="-wildspec", doc=InputDocumentation(doc="string     [*.codon] Type of codon file (Any string)")), ToolInput(tag="in_species", input_type=Boolean(optional=True), prefix="-species", doc=InputDocumentation(doc="string     [*] Species wildcard (Any string)")), ToolInput(tag="in_all_records", input_type=Boolean(optional=True), prefix="-allrecords", doc=InputDocumentation(doc="boolean    [N] Include all records, including those\nwith warnings")), ToolInput(tag="in_filename", input_type=File(optional=True), prefix="-filename", doc=InputDocumentation(doc="string     Single output filename to override automatic\none file for each species. Leave blank to\ngenerate the filenames. Specify a filename\nto combine several species into one file.\n(Any string)"))], outputs=[ToolOutput(tag="out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_filename", type_hint=File()), doc=OutputDocumentation(doc="string     Single output filename to override automatic\none file for each species. Leave blank to\ngenerate the filenames. Specify a filename\nto combine several species into one file.\n(Any string)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Cutgextract_V0_1_0().translate("wdl", allow_empty_container=True)

