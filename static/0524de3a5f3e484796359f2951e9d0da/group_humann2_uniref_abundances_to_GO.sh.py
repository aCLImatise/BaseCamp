from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Group_Humann2_Uniref_Abundances_To_Go_Sh_V0_1_0 = CommandToolBuilder(tool="group_humann2_uniref_abundances_to_GO.sh", base_command=["group_humann2_uniref_abundances_to_GO.sh"], inputs=[ToolInput(tag="in_path_file_output", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Path to file with UniRef50 gene family abundance (HUMAnN2 output)")), ToolInput(tag="in_path_file_molecular", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="Path to file which will contain GO slim term abudances corresponding to molecular functions")), ToolInput(tag="in_path_file_biological", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Path to file which will contain GO slim term abudances corresponding to biological processes")), ToolInput(tag="in_path_file_cellular", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Path to file which will contain GO slim term abudances corresponding to cellular components")), ToolInput(tag="in_path_basic_gene", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="Path to basic Gene Ontology file")), ToolInput(tag="in_path_basic_slim", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Path to basic slim Gene Ontology file")), ToolInput(tag="in_path_file_go", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="Path to file with HUMAnN2 correspondance betwen UniRef50 and GO")), ToolInput(tag="in_path_goatools_scripts", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="Path to GoaTools scripts")), ToolInput(tag="in_path_humann_scripts", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Path to HUMAnN2 scripts"))], outputs=[ToolOutput(tag="out_path_file_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_path_file_output", type_hint=File()), doc=OutputDocumentation(doc="Path to file with UniRef50 gene family abundance (HUMAnN2 output)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Group_Humann2_Uniref_Abundances_To_Go_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

