import ddddocr
import os

def run():
    ocr = ddddocr.DdddOcr(det=False, ocr=False, show_ad=False, import_onnx_path="models/pikpak3.0.onnx", charsets_path="models/charsets.json")

    ima_path = 'temp/'
    for file in os.listdir(ima_path):
        with open(f"{ima_path}/{file}", 'rb') as f:
            image_bytes = f.read()
            if ocr.classification(image_bytes) == 'correct':
                # print(f'{file.split(".")[0]}')
                return  file.split(".")[0]

if __name__ == '__main__':
    run()
