from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Anvi_Script_Process_Genbank_Metadata_V0_1_0 = CommandToolBuilder(tool="anvi_script_process_genbank_metadata", base_command=["anvi-script-process-genbank-metadata"], inputs=[ToolInput(tag="in_metadata", input_type=File(optional=True), prefix="--metadata", doc=InputDocumentation(doc="This is the file you get from the program `ncbi-\ngenome-download` when you use the parameter\n`--metadata-table`.")), ToolInput(tag="in_output_dir", input_type=File(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Directory path for output files")), ToolInput(tag="in_output_fast_a_txt", input_type=File(optional=True), prefix="--output-fasta-txt", doc=InputDocumentation(doc="This is not a FASTA file, but a TAB-delimited file\nwith all the file names and paths processed by this\nprogram. This output can directly go into the anvi'o\nsnakemake workflows because magic.")), ToolInput(tag="in_exclude_gene_calls_from_fast_a_txt", input_type=Boolean(optional=True), prefix="--exclude-gene-calls-from-fasta-txt", doc=InputDocumentation(doc="This flag will exclude the external gene calls and\nfunctions from the fasta.txt file. Files for external\ngene calls and functions according to the information\nstored in GenBank file, but they will simply not be\nincluded in your fasta.txt file. By doing so you will\n*gurantee* that when you use this file from within a\nworkflow, anvi'o wil use its default gene caller to\nidentify genes.\n"))], outputs=[ToolOutput(tag="out_output_dir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Directory path for output files")), ToolOutput(tag="out_output_fast_a_txt", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fast_a_txt", type_hint=File()), doc=OutputDocumentation(doc="This is not a FASTA file, but a TAB-delimited file\nwith all the file names and paths processed by this\nprogram. This output can directly go into the anvi'o\nsnakemake workflows because magic."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Script_Process_Genbank_Metadata_V0_1_0().translate("wdl", allow_empty_container=True)

