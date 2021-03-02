from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Anvi_Gen_Genomes_Storage_V0_1_0 = CommandToolBuilder(tool="anvi_gen_genomes_storage", base_command=["anvi-gen-genomes-storage"], inputs=[ToolInput(tag="in_external_genomes", input_type=File(optional=True), prefix="--external-genomes", doc=InputDocumentation(doc="A two-column TAB-delimited flat text file that lists\nanvi'o contigs databases. The first item in the header\nline should read 'name', and the second should read\n'contigs_db_path'. Each line in the file should\ndescribe a single entry, where the first column is the\nname of the genome (or MAG), and the second column is\nthe anvi'o contigs database generated for this genome.")), ToolInput(tag="in_internal_genomes", input_type=File(optional=True), prefix="--internal-genomes", doc=InputDocumentation(doc="A five-column TAB-delimited flat text file. The header\nline must contain these columns: 'name', 'bin_id',\n'collection_id', 'profile_db_path', 'contigs_db_path'.\nEach line should list a single entry, where 'name' can\nbe any name to describe the anvi'o bin identified as\n'bin_id' that is stored in a collection.")), ToolInput(tag="in_gene_caller", input_type=String(optional=True), prefix="--gene-caller", doc=InputDocumentation(doc="The gene caller to utilize. Anvi'o supports multiple\ngene callers, and some operations (including this one)\nrequires an explicit mentioning of which one to use.\nThe default is 'prodigal', but it will not be enough\nif you if you were a rebel and have used `--external-\ngene-callers` or something.")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="File path to store results.\n"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="File path to store results.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Gen_Genomes_Storage_V0_1_0().translate("wdl", allow_empty_container=True)

