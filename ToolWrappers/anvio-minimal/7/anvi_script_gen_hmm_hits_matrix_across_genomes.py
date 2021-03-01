from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Anvi_Script_Gen_Hmm_Hits_Matrix_Across_Genomes_V0_1_0 = CommandToolBuilder(tool="anvi_script_gen_hmm_hits_matrix_across_genomes", base_command=["anvi-script-gen-hmm-hits-matrix-across-genomes"], inputs=[ToolInput(tag="in_external_genomes", input_type=File(optional=True), prefix="--external-genomes", doc=InputDocumentation(doc="A two-column TAB-delimited flat text file that lists\nanvi'o contigs databases. The first item in the header\nline should read 'name', and the second should read\n'contigs_db_path'. Each line in the file should\ndescribe a single entry, where the first column is the\nname of the genome (or MAG), and the second column is\nthe anvi'o contigs database generated for this genome.\n(default: None)")), ToolInput(tag="in_internal_genomes", input_type=File(optional=True), prefix="--internal-genomes", doc=InputDocumentation(doc="A five-column TAB-delimited flat text file. The header\nline must contain these columns: 'name', 'bin_id',\n'collection_id', 'profile_db_path', 'contigs_db_path'.\nEach line should list a single entry, where 'name' can\nbe any name to describe the anvi'o bin identified as\n'bin_id' that is stored in a collection. (default:\nNone)")), ToolInput(tag="in_hmm_source", input_type=String(optional=True), prefix="--hmm-source", doc=InputDocumentation(doc="NAME\nUse a specific HMM source. You can use '--list-hmm-\nsources' flag to see a list of available resources.\nThe default is 'None'.")), ToolInput(tag="in_list_hmm_sources", input_type=Boolean(optional=True), prefix="--list-hmm-sources", doc=InputDocumentation(doc="List available HMM sources in the contigs database and\nquit. (default: False)")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="File path to store results. (default: None)")), ToolInput(tag="in_hmm_hits_matrix_txt", input_type=String(), position=0, doc=InputDocumentation(doc="🍺 More on `anvi-script-gen-hmm-hits-matrix-across-genomes`:"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="File path to store results. (default: None)"))], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Script_Gen_Hmm_Hits_Matrix_Across_Genomes_V0_1_0().translate("wdl")

