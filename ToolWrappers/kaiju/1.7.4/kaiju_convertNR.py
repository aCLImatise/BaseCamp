from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Kaiju_Convertnr_V0_1_0 = CommandToolBuilder(tool="kaiju_convertNR", base_command=["kaiju-convertNR"], inputs=[ToolInput(tag="in_name_nodesdmp_file", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Name of nodes.dmp file.")), ToolInput(tag="in_name_protaccessiontaxid_file", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="Name of prot.accession2taxid file.")), ToolInput(tag="in_name_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of output file.")), ToolInput(tag="in_prefix_taxon_id", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="Prefix taxon ID in database names with the first accession number per record.")), ToolInput(tag="in_name_nr_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Name of NR file. If this option is not used, then the program will read from STDIN.")), ToolInput(tag="in_name_file_taxon", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="Name of file with taxon IDs. Only records having one of these IDs as ancestor in the taxonomy will be used.")), ToolInput(tag="in_name_file_excluded", input_type=File(optional=True), prefix="-e", doc=InputDocumentation(doc="Name of file with accession numbers that will be excluded."))], outputs=[ToolOutput(tag="out_name_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_output_file", type_hint=File()), doc=OutputDocumentation(doc="Name of output file."))], container="quay.io/biocontainers/kaiju:1.7.4--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kaiju_Convertnr_V0_1_0().translate("wdl")

