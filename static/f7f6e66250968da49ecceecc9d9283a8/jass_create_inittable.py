from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Jass_Create_Inittable_V0_1_0 = CommandToolBuilder(tool="jass_create_inittable", base_command=["jass", "create-inittable"], inputs=[ToolInput(tag="in_input_data_path", input_type=File(optional=True), prefix="--input-data-path", doc=InputDocumentation(doc="path to the GWAS data file (ImpG format) to import.\nthe path must be specify between quotes")), ToolInput(tag="in_in_it_covariance_path", input_type=File(optional=True), prefix="--init-covariance-path", doc=InputDocumentation(doc="path to the covariance file to import")), ToolInput(tag="in_regions_map_path", input_type=File(optional=True), prefix="--regions-map-path", doc=InputDocumentation(doc="path to the genome regions map (BED format) to import")), ToolInput(tag="in_description_file_path", input_type=File(optional=True), prefix="--description-file-path", doc=InputDocumentation(doc="path to the GWAS studies metadata file")), ToolInput(tag="in_in_it_table_path", input_type=File(optional=True), prefix="--init-table-path", doc=InputDocumentation(doc="path to the initial data file to produce, default is\nthe configured path (JASS_DATA_DIR/initTable.hdf5)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jass_Create_Inittable_V0_1_0().translate("wdl", allow_empty_container=True)

