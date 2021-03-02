from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Float, Directory, String

Parse_Sdrf_Convert_Maxquant_V0_1_0 = CommandToolBuilder(tool="parse_sdrf_convert_maxquant", base_command=["parse_sdrf", "convert-maxquant"], inputs=[ToolInput(tag="in_sd_rf", input_type=File(optional=True), prefix="--sdrf", doc=InputDocumentation(doc="SDRF file")), ToolInput(tag="in_fast_a_file_path", input_type=File(optional=True), prefix="--fastafilepath", doc=InputDocumentation(doc="protein database file path,please use /")), ToolInput(tag="in_match_between_runs", input_type=Int(optional=True), prefix="--matchbetweenruns", doc=InputDocumentation(doc="via matching between runs to boosts number of")), ToolInput(tag="in_protein_fdr", input_type=Float(optional=True), prefix="--proteinfdr", doc=InputDocumentation(doc="protein score = product of peptide PEPs (one\nfor each sequence)")), ToolInput(tag="in_temp_folder", input_type=Directory(optional=True), prefix="--tempfolder", doc=InputDocumentation(doc="temporary folder: place on SSD (if possible)\nfor faster search, please use /")), ToolInput(tag="in_raw_folder", input_type=Directory(optional=True), prefix="--raw_folder", doc=InputDocumentation(doc="raw data folder,please use \")), ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--numthreads", doc=InputDocumentation(doc="each thread needs at least 2 GB of RAM,number\nof threads should be ≤ number of logical cores\navailable (otherwise, MaxQuant can crash)")), ToolInput(tag="in_output_one", input_type=File(optional=True), prefix="--output1", doc=InputDocumentation(doc="parameters .xml file  output file path")), ToolInput(tag="in_output_two", input_type=Int(optional=True), prefix="--output2", doc=InputDocumentation(doc="maxquant experimental design .txt file")), ToolInput(tag="in_identifications", input_type=String(), position=0, doc=InputDocumentation(doc="-pef, --peptidefdr FLOAT     posterior error probability calculation based"))], outputs=[ToolOutput(tag="out_output_one", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_one", type_hint=File()), doc=OutputDocumentation(doc="parameters .xml file  output file path"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parse_Sdrf_Convert_Maxquant_V0_1_0().translate("wdl", allow_empty_container=True)

