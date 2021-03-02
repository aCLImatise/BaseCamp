from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Int

Guidescan_Cutting_Specificity_Processer_V0_1_0 = CommandToolBuilder(tool="guidescan_cutting_specificity_processer", base_command=["guidescan_cutting_specificity_processer"], inputs=[ToolInput(tag="in_database_directory", input_type=Directory(optional=True), prefix="--database_directory", doc=InputDocumentation(doc="absolute filepath to directory hosting sgRNA database\nwith no cutting specificity scores")), ToolInput(tag="in_database_name", input_type=File(optional=True), prefix="--database_name", doc=InputDocumentation(doc="filename of sgRNA database with no cutting specificity\nscores")), ToolInput(tag="in_km_ers_file", input_type=File(optional=True), prefix="--kmers_file", doc=InputDocumentation(doc="absolute filepath to directory hosting either\nX_all_kmers.txt.gz or X_all_kmers_counted.txt")), ToolInput(tag="in_fast_a_file_path", input_type=File(optional=True), prefix="--fasta_filepath", doc=InputDocumentation(doc="absolute filepath to organism FASTA file. Index for\nFASTA should also be present in same directory (.fai).\nMust be single aggregate FASTA file for organism")), ToolInput(tag="in_database_directory_two", input_type=Directory(optional=True), prefix="--database_directory2", doc=InputDocumentation(doc="absolute filepath to directory hosting sgRNA database\nwith cutting specificity scores already included and\ngenerated with all the same run parameters as another\ndatabase except for -d. This parameter, coupled with\n-n2, allows for the transfer of cutting efficiency\nscores between two sgRNA databases that differ only in\nhow many mismatches off-targets are enumerated to")), ToolInput(tag="in_database_name_two", input_type=Int(optional=True), prefix="--database_name2", doc=InputDocumentation(doc="filename of sgRNA database with cutting specificity\nscores already included and generated with all the\nsame run parameters as another database except for -d.\nThis parameter, coupled with -d2, allows for the\ntransfer of cutting efficiency scores between two\nsgRNA databases that differ only in how many\nmismatches off-targets are enumerated to\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Guidescan_Cutting_Specificity_Processer_V0_1_0().translate("wdl", allow_empty_container=True)

