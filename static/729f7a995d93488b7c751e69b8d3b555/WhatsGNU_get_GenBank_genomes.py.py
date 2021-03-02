from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Whatsgnu_Get_Genbank_Genomes_Py_V0_1_0 = CommandToolBuilder(tool="WhatsGNU_get_GenBank_genomes.py", base_command=["WhatsGNU_get_GenBank_genomes.py"], inputs=[ToolInput(tag="in_faa", input_type=Boolean(optional=True), prefix="--faa", doc=InputDocumentation(doc="protein faa file from GenBank")), ToolInput(tag="in_contigs", input_type=Boolean(optional=True), prefix="--contigs", doc=InputDocumentation(doc="genomic fna file from GenBank")), ToolInput(tag="in_remove", input_type=Boolean(optional=True), prefix="--remove", doc=InputDocumentation(doc="remove assembly_summary_genbank.txt after done")), ToolInput(tag="in_list", input_type=String(), position=0, doc=InputDocumentation(doc="a list.txt file of GenBank accession numbers (GCA#.#)")), ToolInput(tag="in_output_folder", input_type=String(), position=1, doc=InputDocumentation(doc="give name for output folder to be created"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Whatsgnu_Get_Genbank_Genomes_Py_V0_1_0().translate("wdl", allow_empty_container=True)

