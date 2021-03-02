from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Ganon_Get_Seq_Info_Sh_V0_1_0 = CommandToolBuilder(tool="ganon_get_seq_info.sh", base_command=["ganon-get-seq-info.sh"], inputs=[ToolInput(tag="in_input_file_one", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[str] input file with one accessions per line (use - to read from STDIN)")), ToolInput(tag="in_list_accesions_comma", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="[str] list of accesions (comma separated)")), ToolInput(tag="in__ncbiapikey", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="[str] ncbi_api_key")), ToolInput(tag="in_entries_even_nothing", input_type=String(optional=True), prefix="-k", doc=InputDocumentation(doc="all entries even if nothing is retrieved (report 'na')")), ToolInput(tag="in_sequence_length_taxid", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="sequence length and taxid requests")), ToolInput(tag="in_assembly_accession_latest", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="assembly accession (only latest for the sequence accession)")), ToolInput(tag="in_assembly_name", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="assembly name")), ToolInput(tag="in_sequence_accession_unavailable", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="sequence accession for unavailable asssembly accessions/names (by default report 'na')"))], outputs=[], container="quay.io/biocontainers/ganon:0.4.0--py38hb45e0f6_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ganon_Get_Seq_Info_Sh_V0_1_0().translate("wdl")

