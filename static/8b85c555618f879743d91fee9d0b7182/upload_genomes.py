from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Upload_Genomes_V0_1_0 = CommandToolBuilder(tool="upload_genomes", base_command=["upload_genomes"], inputs=[ToolInput(tag="in_external_genomes", input_type=File(optional=True), prefix="--external-genomes", doc=InputDocumentation(doc="=    comma-separated list of label:nucleotide fasta file pairs of externally supplied genomes.\nlabel:FILE,...     labels should be unique as genomes will be identified by this label in further output files")), ToolInput(tag="in_external_zip", input_type=File(optional=True), prefix="--external-zip", doc=InputDocumentation(doc="destination path for archive of user provided external genomes containing formatted nucleotide fasta files")), ToolInput(tag="in_select_taxa_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_external_genomes", output_type=File(optional=True), selector=InputSelector(input_to_select="in_external_genomes", type_hint=File()), doc=OutputDocumentation(doc="=    comma-separated list of label:nucleotide fasta file pairs of externally supplied genomes.\nlabel:FILE,...     labels should be unique as genomes will be identified by this label in further output files"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Upload_Genomes_V0_1_0().translate("wdl", allow_empty_container=True)

