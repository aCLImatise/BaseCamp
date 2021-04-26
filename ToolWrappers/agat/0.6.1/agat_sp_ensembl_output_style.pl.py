from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Agat_Sp_Ensembl_Output_Style_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_ensembl_output_style.pl", base_command=["agat_sp_ensembl_output_style.pl"], inputs=[ToolInput(tag="in_gff", input_type=File(optional=True), prefix="--gff", doc=InputDocumentation(doc="Input GTF/GFF file.")), ToolInput(tag="in_ct", input_type=File(optional=True), prefix="--ct", doc=InputDocumentation(doc="When the gff file provided is not correcly formated and features\nare linked to each other by a comon tag (by default locus_tag),\nthis tag can be provided to parse the input file correctly.")), ToolInput(tag="in_verbose_option_see", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbose option to see the warning messages when parsing the gff")), ToolInput(tag="in_agat_sp_ensembl_output_style_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:")), ToolInput(tag="in_file_dot", input_type=File(), position=0, doc=InputDocumentation(doc="-o or --output"))], outputs=[], container="quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Ensembl_Output_Style_Pl_V0_1_0().translate("wdl")

