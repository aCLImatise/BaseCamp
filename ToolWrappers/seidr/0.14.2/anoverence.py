from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Anoverence_V0_1_0 = CommandToolBuilder(tool="anoverence", base_command=["anoverence"], inputs=[ToolInput(tag="in_arg_expression_table", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[ --infile ] arg                   The expression table (without headers)")), ToolInput(tag="in__arg_file_containing_gene_names", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="[ --genes ] arg                    File containing gene names")), ToolInput(tag="in_arg_file_containing_metadata", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="[ --features ] arg                 File containing experiment metadata")), ToolInput(tag="in_arg_weight_knockout", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="[ --weight ] arg (=1.0)            Weight for knockout genes")), ToolInput(tag="in_arg_file_containing_gene_names_ofinterest", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="[ --targets ] arg                  File containing gene names of genes of\ninterest. The network will only be\ncalculated using these as the sources\nof potential connections.")), ToolInput(tag="in_arg_anovascorestsvoutput_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --outfile ] arg (=anova_scores.tsv)\nOutput file path")), ToolInput(tag="in_arg_verbosity_level", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --verbosity ] arg (=3)           Verbosity level (lower is less verbose)")), ToolInput(tag="in_force_overwrite_output", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --force ]                        Force overwrite if output already")), ToolInput(tag="in_exists", input_type=String(), position=0, doc=InputDocumentation(doc="-V [ --version ]                      Print the program version"))], outputs=[ToolOutput(tag="out_arg_anovascorestsvoutput_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_anovascorestsvoutput_file", type_hint=File()), doc=OutputDocumentation(doc="[ --outfile ] arg (=anova_scores.tsv)\nOutput file path"))], container="quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anoverence_V0_1_0().translate("wdl")

