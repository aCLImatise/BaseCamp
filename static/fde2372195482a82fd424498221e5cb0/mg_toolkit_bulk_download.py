from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Mg_Toolkit_Bulk_Download_V0_1_0 = CommandToolBuilder(tool="mg_toolkit_bulk_download", base_command=["mg-toolkit", "bulk_download"], inputs=[ToolInput(tag="in_accession", input_type=Int(optional=True), prefix="--accession", doc=InputDocumentation(doc="Provide the study/project accession of your interest, e.g. ERP001736, SRP000319. The study must be publicly available in MGnify.")), ToolInput(tag="in_output_path", input_type=File(optional=True), prefix="--output_path", doc=InputDocumentation(doc="Location of the output directory, where the downloadable files are written to.\nDEFAULT: CWD")), ToolInput(tag="in_pipeline", input_type=String(optional=True), prefix="--pipeline", doc=InputDocumentation(doc="Specify the version of the pipeline you are interested in.\nLets say your study of interest has been analysed with\nmultiple version, but you are only interested in a particular\nversion then used this option to filter down the results by\nthe version you interested in.\nDEFAULT: Downloads all versions")), ToolInput(tag="in_result_group", input_type=String(optional=True), prefix="--result_group", doc=InputDocumentation(doc="Provide a single result group if needed.\nSupported result groups are:\n- statistics\n- sequence_data (all versions)\n- functional_analysis (all versions)\n- taxonomic_analysis (1.0-3.0)\n- taxonomic_analysis_ssu_rrna (>=4.0)\n- taxonomic_analysis_lsu_rrna (>=4.0)\n- non-coding_rnas (>=4.0)\n- taxonomic_analysis_itsonedb (>= 5.0)\n- taxonomic_analysis_unite (>= 5.0)\n- taxonomic_analysis_motu  (>= 5.0)\n- pathways_and_systems (>= 5.0)\nDEFAULT: Downloads all result groups if not provided.\n(default: None).\n"))], outputs=[ToolOutput(tag="out_output_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_path", type_hint=File()), doc=OutputDocumentation(doc="Location of the output directory, where the downloadable files are written to.\nDEFAULT: CWD"))], container="quay.io/biocontainers/mg-toolkit:0.9.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mg_Toolkit_Bulk_Download_V0_1_0().translate("wdl")

